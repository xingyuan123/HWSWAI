#include <iostream>
#include <random>

int main() {
    // Define the range of values for the random numbers
    float min_value = 1.0f;
    float max_value = 10.0f;

    // Seed the random number generator
    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_real_distribution<float> dis(min_value, max_value);

    // Generate 512 random floating-point numbers
    for (int i = 0; i < 4; ++i) {
        // Generate a random number and output it
        float random_number = dis(gen);
        std::cout << random_number;

        // Add a comma after all numbers except the last one
        if (i != 511) {
            std::cout << ", ";
        }
    }

    return 0;
}